Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/dtls_record?download=true
inline.NumInlined: 373
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4bssl16DTLSReplayBitmap6RecordEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 10 uses
  %.not = icmp ult i64 %i.d, 256
  br i1 %.not, label %bb.c, label %_ZNSt6bitsetILm256EElSEm.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.d, 6                         ; 10 uses
  %i.f = and i64 %i.d, 63                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph33.i.i, label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.d, 192
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph33.i.i:                                     ; preds = %bb.c
  %i.i = sub nuw nsw i64 3, %i.e
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21
  %.not28.i.i = icmp ugt i64 %i.d, 191
  br i1 %.not28.i.i, label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i, label %.lr.ph33.i.i.1

.lr.ph33.i.i.1:                                   ; preds = %.lr.ph33.i.i
  %i.m = sub nuw nsw i64 2, %i.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !21
  %.not28.i.i.1 = icmp ugt i64 %i.d, 127
  br i1 %.not28.i.i.1, label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i, label %.lr.ph33.i.i.2

.lr.ph33.i.i.2:                                   ; preds = %.lr.ph33.i.i.1
  %i.q = sub nuw nsw i64 1, %i.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !21
  br label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i

.lr.ph.i.i:                                       ; preds = %.preheader29.i.i
  %i.u = sub nuw nsw i64 3, %i.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr i8, ptr %i.v, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.y, i64 %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !21
  %i.ab = icmp ult i64 %i.d, 128
  br i1 %i.ab, label %.lr.ph.i.i.1, label %.loopexit.i.i

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ac = sub nuw nsw i64 2, %i.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = getelementptr i8, ptr %i.ad, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ag, i64 %i.d)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !21
  %i.aj = icmp eq i64 %i.e, 0
  br i1 %i.aj, label %.lr.ph.i.i.2, label %.loopexit.i.i

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ak = sub nuw nsw i64 1, %i.e
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.ao, i64 %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !21
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.preheader29.i.i
  %i.ar = load i64, ptr %0, align 8, !tbaa !21
  %i.as = shl i64 %i.ar, %i.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  store i64 %i.as, ptr %i.at, align 8, !tbaa !21
  %.not5.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i.i.i.i.i, label %_ZNSt6bitsetILm256EElSEm.exit, label %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i

_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i: ; preds = %.lr.ph33.i.i, %.lr.ph33.i.i.1, %.lr.ph33.i.i.2, %.loopexit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.e, 3
  br label %_ZNSt6bitsetILm256EElSEm.exit.sink.split

_ZNSt6bitsetILm256EElSEm.exit.sink.split:         ; preds = %bb.b, %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i
  %.idx.i.i.sink = phi i64 [ %.idx.i.i, %_ZNSt12_Base_bitsetILm4EE16_M_do_left_shiftEm.exit.sink.split.i ], [ 32, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(32) %0, i8 0, i64 %.idx.i.i.sink, i1 false)
  br label %_ZNSt6bitsetILm256EElSEm.exit

_ZNSt6bitsetILm256EElSEm.exit:                    ; preds = %_ZNSt6bitsetILm256EElSEm.exit.sink.split, %.loopexit.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6bitsetILm256EElSEm.exit, %bb.a
  %i.au = phi i64 [ %1, %_ZNSt6bitsetILm256EElSEm.exit ], [ %i.b, %bb.a ]
  %i.av = sub i64 %i.au, %1                       ; 3 uses
  %i.aw = icmp ult i64 %i.av, 256
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = lshr i64 %i.av, 6
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = and i64 %i.av, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !21
  %i.bc = or i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN4bssl18reconstruct_seqnumEtmm(i16 noundef zeroext %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %2, 1                            ; 2 uses
  %i.b = zext i16 %0 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = and i64 %i.c, %1                         ; 2 uses
  %i.e = add i64 %1, 1                            ; 3 uses
  %i.f = add i64 %i.d, %i.a                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 281474976710655
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.f, %i.e
  %i.i = lshr i64 %i.e, 1
  %i.j = icmp ule i64 %i.d, %i.i
  %or.cond = or i1 %i.j, %i.h
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = sub i64 %i.f, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.k, %bb.c ], [ %i.f, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4bssl19dtls_get_read_epochEPK6ssl_stt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp eq i16 %1, %i.d
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.g, align 8, !tbaa !118
  %i.i = icmp eq i16 %1, %i.h
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 3 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i16, ptr %i.k, align 8, !tbaa !121
  %i.m = icmp eq i16 %1, %i.l
  %spec.select = select i1 %i.m, ptr %i.k, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ null, %bb.d ], [ %i.g, %bb.c ], [ %spec.select, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4bssl20dtls_get_write_epochEPK6ssl_stt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %2 = getelementptr i8, ptr %i.b, i64 150
  %3 = load i16, ptr %2, align 2, !tbaa !122
  %i.d = icmp eq i16 %3, %1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load i8, ptr %i.f, align 8, !tbaa !123   ; 2 uses
  %i.h = zext i8 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not24 = icmp eq i8 %i.g, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.01525, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.i
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01525 = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01525, align 8, !tbaa !125 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !122
  %i.m = lshr i64 %i.l, 48
  %i.n = trunc nuw i64 %i.m to i16
  %.not19 = icmp eq i16 %1, %i.n
  br i1 %.not19, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.3 = phi ptr [ %i.c, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %.lr.ph ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4bssl16dtls_open_recordEP6ssl_stPhPNS_16DTLSRecordNumberEPNS_4SpanIhEEPmS2_S6_(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr noundef %5, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %6) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.cbs_st, align 8             ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 7 uses
  %8 = alloca %struct.cbs_st, align 8             ; 6 uses
  %9 = alloca %struct.cbs_st, align 8             ; 13 uses
  %10 = alloca %"struct.bssl::ParsedDTLSRecord", align 8 ; 22 uses
  %11 = alloca %"class.bssl::Span.73", align 8    ; 3 uses
  %12 = alloca %"class.bssl::Span", align 8       ; 3 uses
  %13 = alloca %"class.std::unique_ptr.44", align 8 ; 12 uses
  store i64 0, ptr %4, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !293
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !294  ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.bh, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.k = load ptr, ptr %6, align 8, !tbaa !295
  store ptr %i.k, ptr %9, align 8, !tbaa !297
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 %i.i, ptr %i.l, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 8 uses
  store i8 0, ptr %i.m, align 8, !tbaa !300
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 50 ; 4 uses
  store i16 0, ptr %i.n, align 2, !tbaa !301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !303
  %i.o = call i32 @CBS_get_u8(ptr noundef nonnull %9, ptr noundef nonnull %i.m)
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.ak, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.m, align 8, !tbaa !300   ; 4 uses
  %i.q = and i8 %i.p, -32
  %i.r = icmp eq i8 %i.q, 32
  br i1 %i.r, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.s = and i8 %i.p, 16
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i16, ptr %i.v, align 8, !tbaa !116  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117  ; 2 uses
  %.not77.i.i = icmp eq ptr %i.y, null
  br i1 %.not77.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i16, ptr %i.y, align 2, !tbaa !304
  %.sroa.speculated.i.i = call i16 @llvm.umax.i16(i16 %i.w, i16 %i.z)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i16 [ %.sroa.speculated.i.i, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %i.aa = and i16 %.0.i.i, -4                     ; 2 uses
  %i.ab = and i8 %i.p, 3
  %i.ac = zext nneg i8 %i.ab to i16
  %i.ad = or disjoint i16 %i.aa, %i.ac            ; 3 uses
  %i.ae = icmp ugt i16 %i.ad, %.0.i.i
  %i.af = icmp ne i16 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.af, %i.ae
  %i.ag = add i16 %i.ad, -4
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i16 %i.ag, i16 %i.ad ; 5 uses
  %i.ah = and i8 %i.p, 8
  %.not46.i.i = icmp eq i8 %i.ah, 0
  %i.ai = select i1 %.not46.i.i, i64 1, i64 2     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.aj = call i32 @CBS_get_bytes(ptr noundef nonnull %9, ptr noundef nonnull %7, i64 noundef %i.ai)
  %.not47.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not47.i.i, label %_ZN4bsslL19parse_dtls13_recordEP6ssl_stP6cbs_stPNS_16ParsedDTLSRecordE.exit.thread26.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.m, align 8, !tbaa !300
  %i.al = and i8 %i.ak, 4
  %.not48.i.i = icmp eq i8 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  br i1 %.not48.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %9, ptr noundef nonnull %i.am)
  %.not50.i.i = icmp eq i32 %i.an, 0
  br i1 %.not50.i.i, label %_ZN4bsslL19parse_dtls13_recordEP6ssl_stP6cbs_stPNS_16ParsedDTLSRecordE.exit.thread26.i, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !298
  %i.ap = call i32 @CBS_get_bytes(ptr noundef nonnull %9, ptr noundef nonnull %i.am, i64 noundef %i.ao)
  %.not49.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not49.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @abort() #18
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !68  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !119
  %.not78.i.i = icmp eq ptr %i.as, null
  br i1 %.not78.i.i, label %.critedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !305
  %i.av = call { i64, i32 } @_ZN4bssl24ssl_ctx_get_current_timeEPK10ssl_ctx_st(ptr noundef %i.au)
  %i.aw = extractvalue { i64, i32 } %i.av, 0
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !68  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 136 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !306
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.o, label %.critedge.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__uniq_ptr_implIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef null) #17
  %.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !68
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %bb.n, %bb.m
  %i.bd = phi ptr [ %i.aq, %bb.m ], [ %.pre.i.i, %bb.o ], [ %i.ax, %bb.n ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !116
  %i.bg = icmp eq i16 %spec.select.i.i.i, %i.bf
  br i1 %i.bg, label %select.unfold.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !118
  %i.bk = icmp eq i16 %spec.select.i.i.i, %i.bj
  br i1 %i.bk, label %select.unfold.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !119 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not12.i.i.i, label %_ZN4bsslL19parse_dtls13_recordEP6ssl_stP6cbs_stPNS_16ParsedDTLSRecordE.exit.thread23.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !121
  %i.bo = icmp eq i16 %spec.select.i.i.i, %i.bn
  br i1 %i.bo, label %select.unfold.i.i, label %_ZN4bsslL19parse_dtls13_recordEP6ssl_stP6cbs_stPNS_16ParsedDTLSRecordE.exit.thread23.i

select.unfold.i.i:                                ; preds = %bb.s, %bb.q, %.critedge.i.i
  %.0.i.ph.i.i = phi ptr [ %i.be, %.critedge.i.i ], [ %i.bi, %bb.q ], [ %i.bm, %bb.s ] ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
end_hunk_0
begin_hunk_1_@_ZN4bssl16dtls_open_recordEP6ssl_stPhPNS_16DTLSRecordNumberEPNS_4SpanIhEEPmS2_S6_:bb.a
bb.bg:                                            ; preds = %.thread77, %bb.bf, %bb.as, %thread-pre-split._crit_edge, %bb.bb, %.critedge, %bb.ap, %_ZNK4bssl16DTLSReplayBitmap13ShouldDiscardEm.exit.thread, %bb.ak
  %.4 = phi i32 [ 1, %_ZNK4bssl16DTLSReplayBitmap13ShouldDiscardEm.exit.thread ], [ 1, %bb.ak ], [ 1, %bb.ap ], [ 4, %bb.as ], [ 4, %thread-pre-split._crit_edge ], [ %i.jl, %bb.bb ], [ 0, %.critedge ], [ 4, %bb.bf ], [ 4, %.thread77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.b, %bb.a, %bb.bg
  %.5 = phi i32 [ %.4, %bb.bg ], [ 3, %bb.a ], [ 2, %bb.b ]
  ret i32 %.5
}

declare void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef, i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4bssl14SSLAEADContext4OpenEPNS_4SpanIhEEhtmNS1_IKhEES2_(ptr noundef nonnull align 8 dereferenceable(599), ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef, ptr noundef byval(%"class.bssl::Span.73") align 8, ptr noundef byval(%"class.bssl::Span") align 8) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ERR_clear_error() local_unnamed_addr #6

declare noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef) local_unnamed_addr #6

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare { i64, i32 } @_ZN4bssl24ssl_ctx_get_current_timeEPK10ssl_ctx_st(ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(113) ptr @_ZN4bssl13DTLSReadEpochaSEOS0_(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !118
  store i16 %i.a, ptr %0, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284
  store ptr null, ptr %i.c, align 8, !tbaa !284
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !284  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bssl14SSLAEADContextD1Ev(ptr noundef nonnull align 8 dead_on_return(599) dereferenceable(599) %i.e) #17
  invoke void @OPENSSL_free(ptr noundef nonnull %i.e)
          to label %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEEaSEOS4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  store ptr null, ptr %i.i, align 8, !tbaa !160
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !160  ; 4 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !160
  %.not.i.i.i.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEaSEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEEaSEOS4_.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #17, !call_target !287, !inline_history !317
  invoke void @OPENSSL_free(ptr noundef nonnull %i.k)
          to label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEaSEOS4_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #18
  unreachable

_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEaSEOS4_.exit: ; preds = %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEEaSEOS4_.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !318   ; 3 uses
  %i.w = icmp ugt i8 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.g, !prof !319

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEaSEOS4_.exit
  %i.x = zext i8 %i.v to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(49) %i.r, ptr nonnull align 8 dereferenceable(49) %i.s, i64 %i.x, i1 false)
  br label %_ZN4bssl13InplaceVectorIhLm48EEaSEOS1_.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEaSEOS4_.exit
  %i.y = icmp eq i8 %i.v, 1
  br i1 %i.y, label %bb.h, label %_ZN4bssl13InplaceVectorIhLm48EEaSEOS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.s, align 8, !tbaa !283
  store i8 %i.z, ptr %i.r, align 8, !tbaa !283
  br label %_ZN4bssl13InplaceVectorIhLm48EEaSEOS1_.exit

_ZN4bssl13InplaceVectorIhLm48EEaSEOS1_.exit:      ; preds = %bb.f, %bb.g, %bb.h
  %i.aa = load i8, ptr %i.u, align 8, !tbaa !318
  store i8 %i.aa, ptr %i.t, align 8, !tbaa !318
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_17DTLSPrevReadEpochEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #17, !call_target !287, !inline_history !4
  invoke void @OPENSSL_free(ptr noundef nonnull %i.c)
          to label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i
  tail call void @_ZN4bssl14SSLAEADContextD1Ev(ptr noundef nonnull align 8 dead_on_return(599) dereferenceable(599) %i.i) #17
  invoke void @OPENSSL_free(ptr noundef nonnull %i.i)
          to label %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i:       ; preds = %bb.e, %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_17DTLSPrevReadEpochEEEvPT_.exit unwind label %bb.g

_ZN4bssl8internal7DeleterclINS_17DTLSPrevReadEpochEEEvPT_.exit: ; preds = %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i, %bb.a
  ret void

bb.g:                                             ; preds = %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable
}

declare noundef i32 @_ZN4bssl17ssl_process_alertEP6ssl_stPhNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 5, 14) i64 @_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i16, ptr %i.c, align 8, !tbaa !159
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.thread, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit: ; preds = %bb.a
  %i.e = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.f = icmp ugt i16 %i.e, 771
  %i.g = icmp ne i16 %1, 0
  %spec.select.i = and i1 %i.g, %i.f
  %spec.select = select i1 %spec.select.i, i64 5, i64 13
  br label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.thread

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.thread: ; preds = %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit, %bb.a
  %i.h = phi i64 [ 13, %bb.a ], [ %spec.select, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit ]
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4bssl22dtls_max_seal_overheadEPK6ssl_stt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %2 = getelementptr i8, ptr %i.b, i64 150
  %3 = load i16, ptr %2, align 2, !tbaa !122
  %i.d = icmp eq i16 %3, %1
  br i1 %i.d, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load i8, ptr %i.f, align 8, !tbaa !123   ; 2 uses
  %i.h = zext i8 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not24.i = icmp eq i8 %i.g, 0
  br i1 %.not24.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01525.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01525.i = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01525.i, align 8, !tbaa !125 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !122
  %i.m = lshr i64 %i.l, 48
  %i.n = trunc nuw i64 %i.m to i16
  %.not19.i = icmp eq i16 %1, %i.n
  br i1 %.not19.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.c

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit:   ; preds = %.lr.ph.i, %bb.a
  %.3.i = phi ptr [ %i.c, %bb.a ], [ %i.k, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.r = load i16, ptr %i.q, align 8, !tbaa !159
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit
  %i.s = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.t = icmp ugt i16 %i.s, 771
  %i.u = icmp ne i16 %1, 0
  %spec.select.i.i = and i1 %i.u, %i.t
  %spec.select.i = select i1 %spec.select.i.i, i64 5, i64 13
  br label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit

_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i
  %i.v = phi i64 [ 13, %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit ], [ %spec.select.i, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.y = tail call noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(599) %i.x)
  %i.z = add i64 %i.y, %i.v                       ; 2 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !159
  %.not.i12 = icmp eq i16 %i.ac, 0
  br i1 %.not.i12, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit: ; preds = %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit
  %i.ad = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.ae = icmp ugt i16 %i.ad, 771
  %i.af = icmp ne i16 %1, 0
  %spec.select.i13 = and i1 %i.af, %i.ae
  %i.ag = zext i1 %spec.select.i13 to i64
  %spec.select = add i64 %i.z, %i.ag
  br label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread: ; preds = %bb.c, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit, %bb.b
  %.010 = phi i64 [ 0, %bb.b ], [ %i.z, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit ], [ %spec.select, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit ], [ 0, %bb.c ]
  ret i64 %.010
}

declare noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(599)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %2 = getelementptr i8, ptr %i.b, i64 150
  %3 = load i16, ptr %2, align 2, !tbaa !122
  %i.d = icmp eq i16 %3, %1
  br i1 %i.d, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load i8, ptr %i.f, align 8, !tbaa !123   ; 2 uses
  %i.h = zext i8 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not24.i = icmp eq i8 %i.g, 0
  br i1 %.not24.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01525.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01525.i = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01525.i, align 8, !tbaa !125 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !122
  %i.m = lshr i64 %i.l, 48
  %i.n = trunc nuw i64 %i.m to i16
  %.not19.i = icmp eq i16 %1, %i.n
  br i1 %.not19.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.c

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit:   ; preds = %.lr.ph.i, %bb.a
  %.3.i = phi ptr [ %i.c, %bb.a ], [ %i.k, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.r = load i16, ptr %i.q, align 8, !tbaa !159
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit
  %i.s = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.t = icmp ugt i16 %i.s, 771
  %i.u = icmp ne i16 %1, 0
  %spec.select.i.i = and i1 %i.u, %i.t
  %spec.select.i = select i1 %spec.select.i.i, i64 5, i64 13
  br label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit

_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i
  %i.v = phi i64 [ 13, %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit ], [ %spec.select.i, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.y = tail call noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(599) %i.x)
  %i.z = add i64 %i.y, %i.v
  br label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread: ; preds = %bb.c, %bb.b, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit
  %.0 = phi i64 [ %i.z, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

declare noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(599)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4bssl23dtls_seal_max_input_lenEPK6ssl_sttm(ptr noundef %0, i16 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %3 = getelementptr i8, ptr %i.b, i64 150
  %4 = load i16, ptr %3, align 2, !tbaa !122
  %i.d = icmp eq i16 %4, %1
  br i1 %i.d, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load i8, ptr %i.f, align 8, !tbaa !123   ; 2 uses
  %i.h = zext i8 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not24.i = icmp eq i8 %i.g, 0
  br i1 %.not24.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01525.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01525.i = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01525.i, align 8, !tbaa !125 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !122
  %i.m = lshr i64 %i.l, 48
  %i.n = trunc nuw i64 %i.m to i16
  %.not19.i = icmp eq i16 %1, %i.n
  br i1 %.not19.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.c

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit:   ; preds = %.lr.ph.i, %bb.a
  %.3.i = phi ptr [ %i.c, %bb.a ], [ %i.k, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.r = load i16, ptr %i.q, align 8, !tbaa !159
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit
  %i.s = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.t = icmp ugt i16 %i.s, 771
  %i.u = icmp ne i16 %1, 0
  %spec.select.i.i = and i1 %i.u, %i.t
  %spec.select.i = select i1 %spec.select.i.i, i64 5, i64 13
  br label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit

_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i
  %i.v = phi i64 [ 13, %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit ], [ %spec.select.i, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i ] ; 2 uses
  %.not = icmp ugt i64 %2, %i.v
  br i1 %.not, label %bb.d, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread

bb.d:                                             ; preds = %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit
  %i.w = sub nuw i64 %2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !284
  %i.z = tail call noundef i64 @_ZNK4bssl14SSLAEADContext15MaxSealInputLenEm(ptr noundef nonnull align 8 dereferenceable(599) %i.y, i64 noundef %i.w) ; 3 uses
  %.not22 = icmp eq i64 %i.z, 0
  br i1 %.not22, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !159
  %.not.i23 = icmp eq i16 %i.ac, 0
  br i1 %.not.i23, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit: ; preds = %bb.e
  %i.ad = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.ae = icmp ugt i16 %i.ad, 771
  %i.af = icmp ne i16 %1, 0
  %spec.select.i24 = and i1 %i.af, %i.ae
  %i.ag = sext i1 %spec.select.i24 to i64
  %spec.select = add i64 %i.z, %i.ag
  br label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.thread: ; preds = %bb.c, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit, %bb.e, %bb.b, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit, %bb.d
  %.1 = phi i64 [ 0, %bb.b ], [ 0, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit ], [ 0, %bb.d ], [ %i.z, %bb.e ], [ %spec.select, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit ], [ 0, %bb.c ]
  ret i64 %.1
}

declare noundef i64 @_ZNK4bssl14SSLAEADContext15MaxSealInputLenEm(ptr noundef nonnull align 8 dereferenceable(599), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i8 noundef zeroext %5, ptr noundef %6, i64 noundef %7, i16 noundef zeroext %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.bssl::Span.73", align 8     ; 3 uses
  %i.c = alloca [2 x i8], align 1                 ; 6 uses
  store i8 %5, ptr %i.a, align 1, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %10 = getelementptr i8, ptr %i.e, i64 150
  %11 = load i16, ptr %10, align 2, !tbaa !122
  %i.g = icmp eq i16 %11, %8
  br i1 %i.g, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.j = load i8, ptr %i.i, align 8, !tbaa !123   ; 2 uses
  %i.k = zext i8 %i.j to i64
  %.idx.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not24.i.i = icmp eq i8 %i.j, 0
  br i1 %.not24.i.i, label %_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01525.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i, label %_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01525.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %.01525.i.i, align 8, !tbaa !125 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122
  %i.p = lshr i64 %i.o, 48
  %i.q = trunc nuw i64 %i.p to i16
  %.not19.i.i = icmp eq i16 %8, %i.q
  br i1 %.not19.i.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.i, label %bb.c

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.3.i.i = phi ptr [ %i.f, %bb.a ], [ %i.n, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = load i16, ptr %i.t, align 8, !tbaa !159
  %.not.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit.i, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i.i

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i.i: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.i
  %i.v = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.w = icmp ugt i16 %i.v, 771
  %i.x = icmp ne i16 %8, 0
  %spec.select.i.i.i = and i1 %i.x, %i.w
  %spec.select.i.i = select i1 %spec.select.i.i.i, i64 5, i64 13
  br label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit.i

_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit.i: ; preds = %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i.i, %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.i
  %i.y = phi i64 [ 13, %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit.i ], [ %spec.select.i.i, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !284
  %i.ab = tail call noundef i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr noundef nonnull align 8 dereferenceable(599) %i.aa)
  %i.ac = add i64 %i.ab, %i.y
  br label %_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt.exit

_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt.exit:   ; preds = %bb.c, %bb.b, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit.i
  %.0.i = phi i64 [ %i.ac, %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit.i ], [ 0, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %i.ad = ptrtoint ptr %6 to i64                  ; 2 uses
  %i.ae = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.af = add i64 %7, %i.ad
  %i.ag = icmp ule i64 %i.af, %i.ae
  %i.ah = add i64 %4, %i.ae
  %i.ai = icmp ule i64 %i.ah, %i.ad
  %narrow.i.not = or i1 %i.ai, %i.ag
  br i1 %narrow.i.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt.exit
  %i.aj = icmp uge i64 %4, %.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i
  %.not73 = icmp eq ptr %i.ak, %6
  %or.cond = select i1 %i.aj, i1 %.not73, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 189, ptr noundef nonnull @.str, i32 noundef 486)
  br label %bb.z

bb.f:                                             ; preds = %bb.d, %_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt.exit
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !68  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %12 = getelementptr i8, ptr %i.al, i64 150
  %13 = load i16, ptr %12, align 2, !tbaa !122
  %i.an = icmp eq i16 %13, %8
  br i1 %i.an, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 224 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !123 ; 2 uses
  %i.ar = zext i8 %i.aq to i64
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not24.i = icmp eq i8 %i.aq, 0
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01525.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.01525.i = phi ptr [ %i.at, %bb.h ], [ %i.ao, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.01525.i, align 8, !tbaa !125 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !122
  %i.aw = lshr i64 %i.av, 48
  %i.ax = trunc nuw i64 %i.aw to i16
  %.not19.i = icmp eq i16 %8, %i.ax
  br i1 %.not19.i, label %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, label %bb.h

.loopexit:                                        ; preds = %bb.h, %bb.g
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 493)
  br label %bb.z

_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit:   ; preds = %.lr.ph.i, %bb.f
  %.3.i = phi ptr [ %i.am, %bb.f ], [ %i.au, %.lr.ph.i ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !159
  %.not.i.i75 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i75, label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit
  %i.bc = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.bd = icmp ugt i16 %i.bc, 771
  %i.be = icmp ne i16 %8, 0
  %spec.select.i.i76 = and i1 %i.be, %i.bd
  %spec.select.i = select i1 %spec.select.i.i76, i64 5, i64 13
  br label %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit

_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit: ; preds = %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i
  %i.bf = phi i64 [ 13, %_ZN4bssl20dtls_get_write_epochEPK6ssl_stt.exit ], [ %spec.select.i, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit.i ] ; 5 uses
  %14 = load i64, ptr %.3.i, align 8, !tbaa !21   ; 6 uses
  %i.bg = and i64 %14, 281474976710655            ; 2 uses
  %.not = icmp eq i64 %i.bg, 281474976710655
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 502)
  br label %bb.z

bb.j:                                             ; preds = %_ZN4bssl28dtls_record_header_write_lenEPK6ssl_stt.exit
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !159
  %.not.i77 = icmp eq i16 %i.bj, 0
  br i1 %.not.i77, label %bb.k, label %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit

_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit: ; preds = %bb.j
  %i.bk = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.bl = icmp ugt i16 %i.bk, 771
  %i.bm = icmp ne i16 %8, 0
  %spec.select.i78 = and i1 %i.bm, %i.bl
  br i1 %spec.select.i78, label %bb.k, label %.thread

.thread:                                          ; preds = %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit, %.thread
  %i.bn = phi ptr [ %i.a, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit ], [ null, %bb.j ], [ null, %.thread ]
  %i.bo = phi i1 [ true, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit ], [ false, %bb.j ], [ false, %.thread ] ; 2 uses
  %i.bp = phi i64 [ 1, %_ZN4bsslL24use_dtls13_record_headerEPK6ssl_stt.exit ], [ 0, %bb.j ], [ 0, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bq = getelementptr inbounds nuw i8, ptr %.3.i, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !284
  %i.bs = call noundef zeroext i1 @_ZNK4bssl14SSLAEADContext13CiphertextLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %i.br, ptr noundef nonnull %i.b, i64 noundef %7, i64 noundef %i.bp)
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 517)
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !21
  %i.bu = add i64 %i.bt, %i.bf
  %i.bv = icmp ult i64 %4, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 121, ptr noundef nonnull @.str, i32 noundef 521)
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !159
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %_ZN4bsslL19dtls_record_versionEPK6ssl_st.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.cb = icmp ugt i16 %i.ca, 771
  br i1 %i.cb, label %_ZN4bsslL19dtls_record_versionEPK6ssl_st.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !159
  br label %_ZN4bsslL19dtls_record_versionEPK6ssl_st.exit

_ZN4bsslL19dtls_record_versionEPK6ssl_st.exit:    ; preds = %bb.o, %bb.p, %bb.q
  %.0.i79 = phi i16 [ -257, %bb.o ], [ %i.ce, %bb.q ], [ -259, %bb.p ] ; 2 uses
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4bsslL19dtls_record_versionEPK6ssl_st.exit
  %i.cf = trunc i16 %8 to i8
  %i.cg = and i8 %i.cf, 3
  %i.ch = or disjoint i8 %i.cg, 44
  store i8 %i.ch, ptr %2, align 1, !tbaa !283
  %i.ci = load i64, ptr %.3.i, align 8, !tbaa !122
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  br label %bb.t

bb.s:                                             ; preds = %_ZN4bsslL19dtls_record_versionEPK6ssl_st.exit
  store i8 %5, ptr %2, align 1, !tbaa !283
  %i.cl = call noundef i16 @llvm.bswap.i16(i16 %.0.i79)
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cn = call noundef i64 @llvm.bswap.i64(i64 %14)
  store i64 %i.cn, ptr %i.cm, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink112 = phi i64 [ 11, %bb.s ], [ 3, %bb.r ]
  %.sink = phi i16 [ %i.cl, %bb.s ], [ %i.ck, %bb.r ]
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %.sink112
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !21
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  store i16 %i.cr, ptr %i.co, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  store i16 %.sink, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.bq, align 8, !tbaa !284
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %7
  %i.cx = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 208
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !159
  %.not.i80 = icmp eq i16 %i.cz, 0
  br i1 %.not.i80, label %_ZN4bsslL18dtls_aead_sequenceEPK6ssl_stNS_16DTLSRecordNumberE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.db = icmp ugt i16 %i.da, 771
  %spec.select.i81 = select i1 %i.db, i64 %i.bg, i64 %14
  br label %_ZN4bsslL18dtls_aead_sequenceEPK6ssl_stNS_16DTLSRecordNumberE.exit

_ZN4bsslL18dtls_aead_sequenceEPK6ssl_stNS_16DTLSRecordNumberE.exit: ; preds = %bb.t, %bb.u
  %i.dc = phi i64 [ %14, %bb.t ], [ %spec.select.i81, %bb.u ]
  store ptr %2, ptr %9, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bf, ptr %.sroa.585.0..sroa_idx, align 8
  %i.dd = call noundef zeroext i1 @_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m(ptr noundef nonnull align 8 dereferenceable(599) %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, i8 noundef zeroext %5, i16 noundef zeroext %.0.i79, i64 noundef %i.dc, ptr noundef nonnull byval(%"class.bssl::Span.73") align 8 %9, ptr noundef %6, i64 noundef %7, ptr noundef %i.bn, i64 noundef %i.bp)
  br i1 %i.dd, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN4bsslL18dtls_aead_sequenceEPK6ssl_stNS_16DTLSRecordNumberE.exit
  br i1 %i.bo, label %bb.w, label %_ZNK4bssl16DTLSRecordNumber4NextEv.exit

bb.w:                                             ; preds = %bb.v
  %i.de = load i64, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.df = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !160 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !162
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr nonnull %i.c, i64 2, ptr nonnull %i.cu, i64 %i.de), !call_target !168
  br i1 %i.dk, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.dl = load i8, ptr %i.c, align 1, !tbaa !283
  %i.dm = load i8, ptr %i.cs, align 1, !tbaa !283
  %i.dn = xor i8 %i.dm, %i.dl
  store i8 %i.dn, ptr %i.cs, align 1, !tbaa !283
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !283
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !283
  %i.ds = xor i8 %i.dr, %i.dp
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %_ZNK4bssl16DTLSRecordNumber4NextEv.exit

_ZNK4bssl16DTLSRecordNumber4NextEv.exit:          ; preds = %bb.v, %bb.x
  store i64 %14, ptr %1, align 8, !tbaa !21
  %i.dt = add i64 %14, 1
  store i64 %i.dt, ptr %.3.i, align 8, !tbaa !21
  %i.du = load i64, ptr %i.b, align 8, !tbaa !21
  %i.dv = add i64 %i.du, %i.bf
  store i64 %i.dv, ptr %3, align 8, !tbaa !21
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 256, ptr nonnull %2, i64 %i.bf)
  br label %bb.y

.critedge:                                        ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4bssl16DTLSRecordNumber4NextEv.exit, %_ZN4bsslL18dtls_aead_sequenceEPK6ssl_stNS_16DTLSRecordNumberE.exit, %.critedge, %bb.n, %bb.l
  %.2 = phi i1 [ false, %bb.n ], [ false, %bb.l ], [ true, %_ZNK4bssl16DTLSRecordNumber4NextEv.exit ], [ false, %.critedge ], [ false, %_ZN4bsslL18dtls_aead_sequenceEPK6ssl_stNS_16DTLSRecordNumberE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %bb.y, %.loopexit, %bb.e
  %.5 = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ %.2, %bb.y ], [ false, %bb.i ]
  ret i1 %.5
}

declare noundef zeroext i1 @_ZNK4bssl14SSLAEADContext13CiphertextLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m(ptr noundef nonnull align 8 dereferenceable(599), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef, ptr noundef byval(%"class.bssl::Span.73") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @CBS_get_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare i32 @CBS_get_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15__uniq_ptr_implIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !119
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_17DTLSPrevReadEpochEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #17, !call_target !287, !inline_history !4
  invoke void @OPENSSL_free(ptr noundef nonnull %i.c)
          to label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i
  tail call void @_ZN4bssl14SSLAEADContextD1Ev(ptr noundef nonnull align 8 dead_on_return(599) dereferenceable(599) %i.i) #17
  invoke void @OPENSSL_free(ptr noundef nonnull %i.i)
          to label %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i:       ; preds = %bb.e, %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i.i
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_17DTLSPrevReadEpochEEEvPT_.exit unwind label %bb.g

_ZN4bssl8internal7DeleterclINS_17DTLSPrevReadEpochEEEvPT_.exit: ; preds = %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i, %bb.a
  ret void

bb.g:                                             ; preds = %_ZN4bssl17DTLSPrevReadEpochD2Ev.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4bssl14SSLAEADContextD1Ev(ptr noundef nonnull align 8 dead_on_return(599) dereferenceable(599)) unnamed_addr #12

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @CBS_get_u64(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15__uniq_ptr_implIN4bssl13DTLSReadEpochENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !117
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_13DTLSReadEpochEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #17, !call_target !287, !inline_history !320
  invoke void @OPENSSL_free(ptr noundef nonnull %i.c)
          to label %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 3 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i.i.i, label %_ZN4bssl13DTLSReadEpochD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i
  tail call void @_ZN4bssl14SSLAEADContextD1Ev(ptr noundef nonnull align 8 dead_on_return(599) dereferenceable(599) %i.i) #17
  invoke void @OPENSSL_free(ptr noundef nonnull %i.i)
          to label %_ZN4bssl13DTLSReadEpochD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4bssl13DTLSReadEpochD2Ev.exit.i.i.i:           ; preds = %bb.e, %_ZNSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEED2Ev.exit.i.i.i.i
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_13DTLSReadEpochEEEvPT_.exit unwind label %bb.g

_ZN4bssl8internal7DeleterclINS_13DTLSReadEpochEEEvPT_.exit: ; preds = %_ZN4bssl13DTLSReadEpochD2Ev.exit.i.i.i, %bb.a
  ret void

bb.g:                                             ; preds = %_ZN4bssl13DTLSReadEpochD2Ev.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_1
