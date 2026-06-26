inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE11StartObjectERNS0_23SchemaValidationContextISA_EE:bb.a
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i64 14), align 2
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i64 8), align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -281474976710656
  %i.j = or i64 %i.i, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1s to i64)
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i64 8), align 8
  store i32 6, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v) #34
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE14DisallowedTypeERNS0_23SchemaValidationContextISA_EERKS9_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 20, ptr %i.l, align 8
  %i.m = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, !prof !159

bb.e:                                             ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v) #34
  %.not.i21.i = icmp eq i32 %i.o, 0
  br i1 %.not.i21.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 14), align 2
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 8), align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -281474976710656
  %i.s = or i64 %i.r, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1s to i64)
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 8), align 8
  store i32 4, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v) #34
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit: ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit, %bb.e, %bb.f
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 14), align 2
  %i.v = and i16 %i.u, 4096
  %.not.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v, i64 8), align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = select i1 %.not.i.i, ptr %i.z, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetTypeStringEvE1v
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.aa, ptr %i.ab, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.ad = load i8, ptr %i.ac, align 1, !range !19, !noundef !20
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.ag = load i8, ptr %i.af, align 2, !range !19
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.al) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = load i32, ptr %i.aj, align 4
  %i.as = zext i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 0, i64 %i.as, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.au = load ptr, ptr %i.at, align 8
  %.not14 = icmp eq ptr %i.au, null
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add i32 %i.aw, 1
  %i.ay = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 2 uses
  %i.az = zext i32 %i.ax to i64
  %i.ba = shl nuw nsw i64 %i.az, 3                ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %i.ba) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 0, ptr %i.bg, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.ba, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = tail call noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23CreateParallelValidatorERNS0_23SchemaValidationContextISA_EE(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit
  %.0 = phi i1 [ %i.bh, %bb.k ], [ false, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE3KeyERNS0_23SchemaValidationContextISA_EEPKcjb(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit55, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %.loopexit55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE14IsPatternMatchEPKNS0_12GenericRegexIS5_S7_EEPKcj(ptr noundef nonnull %i.l, ptr noundef %2, i32 noundef %3)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = load i32, ptr %i.c, align 8              ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store ptr %i.p, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.g, align 8
  store ptr %i.v, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.d, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %.loopexit55, !llvm.loop !720

.loopexit55:                                      ; preds = %bb.f, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not.i.i.i = icmp eq ptr %2, null
  %i.z = select i1 %.not.i.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %2, !prof !6
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ag = or i64 %i.ae, %i.af                     ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.ab, align 8
  store i32 %3, ptr %5, align 8
  %i.ai = and i64 %i.ag, 1152921504606846976
  %.not.i.i.i49 = icmp eq i64 %i.ai, 0            ; 2 uses
  %i.aj = lshr i64 %i.af, 40
  %i.ak = trunc i64 %i.aj to i8
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = select i1 %.not.i.i.i49, i32 %3, i32 %i.am ; 2 uses
  %i.ao = and i64 %i.af, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = select i1 %.not.i.i.i49, ptr %i.ap, ptr %5
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not22.not.i = icmp eq i32 %i.as, 0
  br i1 %.not22.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = zext i32 %i.an to i64
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %indvars.iv.i ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, 4096
  %.not.i.i17.i = icmp eq i16 %i.az, 0            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = sext i8 %i.bb to i32
  %i.bd = sub nsw i32 13, %i.bc
  %i.be = load i32, ptr %i.aw, align 8
  %i.bf = select i1 %.not.i.i17.i, i32 %i.be, i32 %i.bd
  %i.bg = icmp eq i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = select i1 %.not.i.i17.i, ptr %i.bl, ptr %i.aw
  %bcmp.i = call i32 @bcmp(ptr %i.bm, ptr %i.aq, i64 %i.av)
  %i.bn = icmp eq i32 %bcmp.i, 0
  br i1 %i.bn, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.g, !llvm.loop !721

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 3 uses
  %.not46 = icmp eq i32 %i.bp, 0
  %6 = and i64 %indvars.iv.i, 4294967295
  %7 = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %6
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = add i32 %i.bp, 1
  store i32 %i.bu, ptr %i.bo, align 8
  %i.bv = zext i32 %i.bp to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.br, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 1, ptr %i.bz, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi ptr [ %i.by, %bb.k ], [ %i.br, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sink, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not47 = icmp eq ptr %i.cc, null
  br i1 %.not47, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %8 = and i64 %indvars.iv.i, 4294967295
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %8
  store i8 1, ptr %i.cd, align 1
  br label %bb.w

.loopexit:                                        ; preds = %bb.i, %.loopexit55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not44 = icmp eq ptr %i.cf, null
  br i1 %.not44, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8            ; 3 uses
  %.not45 = icmp eq i32 %i.ch, 0
  br i1 %.not45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = add i32 %i.ch, 1
  store i32 %i.ck, ptr %i.cg, align 8
  %i.cl = zext i32 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cl
  store ptr %i.cf, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 2, ptr %i.cq, align 4
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cf, ptr %i.cr, align 8
  br label %bb.w

bb.q:                                             ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ct = load i8, ptr %i.cs, align 8, !range !19, !noundef !20
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cw, ptr %i.cx, align 8
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !20, !align !33 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 192
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %2, i32 noundef %3)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 16, ptr %i.dj, align 8
  %i.dk = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v acquire, align 8
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, !prof !159

bb.u:                                             ; preds = %bb.t
  %i.dm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v) #34
  %.not.i17.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i17.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, i64 14), align 2
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, i64 8), align 8
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = and i64 %i.do, -281474976710656
  %i.dq = or i64 %i.dp, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1s to i64)
  %i.dr = inttoptr i64 %i.dq to ptr
  store ptr %i.dr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, i64 8), align 8
  store i32 20, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v) #34
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ds = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, i64 14), align 2
  %i.dt = and i16 %i.ds, 4096
  %.not.i.i = icmp eq i16 %i.dt, 0
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v, i64 8), align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = and i64 %i.dv, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = select i1 %.not.i.i, ptr %i.dx, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE29GetAdditionalPropertiesStringEvE1v
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.dy, ptr %i.dz, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.o, %bb.p, %bb.l, %bb.m, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, %bb.r
  %.0 = phi i1 [ true, %bb.o ], [ true, %bb.l ], [ true, %bb.r ], [ false, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit ], [ true, %bb.m ], [ true, %bb.p ], [ true, %bb.s ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE14IsPatternMatchEPKNS0_12GenericRegexIS5_S7_EEPKcj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rapidjson::GenericStringStream", align 8 ; 5 uses
  %4 = alloca %"class.rapidjson::internal::GenericRegexSearch", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_EC2ERKS6_PS5_(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %4, align 8, !nonnull !20, !align !33 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.d = load i8, ptr %i.c, align 4, !range !19, !noundef !20
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 125
  %i.g = load i8, ptr %i.f, align 1, !range !19, !noundef !20
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = invoke noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E19SearchWithAnchoringINS_19GenericStringStreamIS4_EEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %i.e, i1 noundef zeroext %i.h)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  call void @free(ptr noundef %i.k) #34
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 1) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  call void @free(ptr noundef %i.p) #34
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit.i

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void @free(ptr noundef %i.u) #34
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_ED2Ev.exit

_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_ED2Ev.exit: ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %i.i

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_EC2ERKS6_PS5_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(126) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.not = icmp eq ptr %2, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
end_hunk_0
begin_hunk_1_@_ZN10aiMetadataC2ERKS_:bb.a
  %.pre = load i32, ptr %0, align 8
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph.split, %bb.b
  %i.af = phi i32 [ %i.u, %.lr.ph.split ], [ %.pre, %bb.b ] ; 3 uses
  %i.ag = add nuw nsw i64 %.078, 1                ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.split, label %._crit_edge, !llvm.loop !1130

bb.c:                                             ; preds = %._crit_edge.thread96, %._crit_edge
  %i.aj = phi ptr [ %i.q, %._crit_edge.thread96 ], [ %i.t, %._crit_edge ] ; 4 uses
  %.lcssa7698 = phi i64 [ %i.d, %._crit_edge.thread96 ], [ %i.ah, %._crit_edge ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.lcssa7698
  %i.al = add nuw nsw i64 %.lcssa7698, 1152921504606846975
  %i.am = and i64 %i.al, 1152921504606846975
  %xtraiter = and i64 %.lcssa7698, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %i.an = phi ptr [ %i.ap, %.prol.preheader ], [ %i.aj, %bb.c ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  store i32 10, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1132

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.unr = phi ptr [ %i.aj, %bb.c ], [ %i.ap, %.prol.preheader ]
  %i.aq = icmp samesign ult i64 %i.am, 7
  br i1 %i.aq, label %.lr.ph84, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ar = phi ptr [ %i.bh, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 10, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i32 10, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 10, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 10, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store i32 10, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store ptr null, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store i32 10, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store i32 10, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store ptr null, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 128 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ak
  br i1 %i.bi, label %.lr.ph84, label %.new

.loopexit.thread:                                 ; preds = %._crit_edge.thread, %._crit_edge
  %.ph = phi ptr [ %i.t, %._crit_edge ], [ %i.h, %._crit_edge.thread ]
  store ptr %.ph, ptr %i.c, align 8
  br label %._crit_edge85

.lr.ph84:                                         ; preds = %.new, %.prol.loopexit
  store ptr %i.aj, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  br label %bb.d

._crit_edge85:                                    ; preds = %bb.y, %.loopexit.thread
  ret void

bb.d:                                             ; preds = %.lr.ph84, %bb.y
  %.05981 = phi i64 [ 0, %.lr.ph84 ], [ %i.fh, %bb.y ] ; 19 uses
  %i.bn = load ptr, ptr %i.bj, align 8
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.05981
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.05981
  store i32 %i.bp, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.bj, align 8
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.05981 ; 11 uses
  %i.bu = load i32, ptr %i.bt, align 8
  switch i32 %i.bu, label %bb.y [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.l
    i32 7, label %bb.n
    i32 8, label %bb.w
    i32 9, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  %i.bv = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.05981
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bv, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %.05981
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.bj, align 8
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.05981
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i8, ptr %i.cg, align 1
  store i8 %i.ch, ptr %i.cc, align 1
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %.0.copyload8 = load i32, ptr %i.cj, align 1
  %i.ck = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37 ; 2 uses
  store i32 %.0.copyload8, ptr %i.ck, align 4
  %i.cl = load ptr, ptr %i.c, align 8
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.05981
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ck, ptr %i.cn, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %.0.copyload6 = load i64, ptr %i.cp, align 1
  %i.cq = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 2 uses
  store i64 %.0.copyload6, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.05981
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cq, ptr %i.ct, align 8
  br label %bb.y

bb.h:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %.0.copyload5 = load float, ptr %i.cv, align 1
  %i.cw = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37 ; 2 uses
  store float %.0.copyload5, ptr %i.cw, align 4
  %i.cx = load ptr, ptr %i.c, align 8
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.05981
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cw, ptr %i.cz, align 8
  br label %bb.y

bb.i:                                             ; preds = %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %.0.copyload3 = load double, ptr %i.db, align 1
  %i.dc = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 2 uses
  store double %.0.copyload3, ptr %i.dc, align 8
  %i.dd = load ptr, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.05981
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dc, ptr %i.df, align 8
  br label %bb.y

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.dg = trunc nuw i64 %.05981 to i32
  %i.dh = load i32, ptr %1, align 8
  %.not.i = icmp ugt i32 %i.dh, %i.dg
  br i1 %.not.i, label %bb.k, label %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.dk, i32 1023) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dm = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr nonnull align 4 %i.dl, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dm
  store i8 0, ptr %i.dn, align 1
  br label %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit

_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit:       ; preds = %bb.j, %bb.k
  %i.do = phi i32 [ 0, %bb.j ], [ %spec.select.i.i, %bb.k ] ; 2 uses
  %i.dp = call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #37 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.dq, i8 0, i64 1024, i1 false)
  store i32 %i.do, ptr %i.dp, align 4
  %i.dr = zext nneg i32 %i.do to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr nonnull align 4 %i.bm, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 0, ptr %i.ds, align 1
  %i.dt = load ptr, ptr %i.c, align 8
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.05981
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dp, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.y

bb.l:                                             ; preds = %bb.d
  %i.dw = trunc nuw i64 %.05981 to i32
  %i.dx = load i32, ptr %1, align 8
  %.not.i64 = icmp ugt i32 %i.dx, %i.dw
  br i1 %.not.i64, label %bb.m, label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.6.0.copyload74 = load float, ptr %.sroa.6.0..sroa_idx73, align 4
  br label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit

_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit: ; preds = %bb.l, %bb.m
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload74, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.eb = phi <2 x float> [ %i.ea, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.ec = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #37 ; 3 uses
  store <2 x float> %i.eb, ptr %i.ec, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ed = load ptr, ptr %i.c, align 8
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.05981
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ec, ptr %i.ef, align 8
  br label %bb.y

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 0, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.eg = trunc nuw i64 %.05981 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.eh = load i32, ptr %1, align 8
  %.not.i67 = icmp ugt i32 %i.eh, %i.eg
  br i1 %.not.i67, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ei = load i32, ptr %i.bt, align 8
  %.not7.i69 = icmp eq i32 %i.ei, 7
  br i1 %.not7.i69, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %.noexc unwind label %bb.t, !inline_history !1133

.noexc:                                           ; preds = %bb.p
  %i.el = load i32, ptr %4, align 8
  %i.em = load i32, ptr %2, align 8
  store i32 %i.em, ptr %4, align 8
  store i32 %i.el, ptr %2, align 8
  %i.en = load <2 x ptr>, ptr %i.bl, align 8
  %i.eo = load <2 x ptr>, ptr %i.bk, align 8
  store <2 x ptr> %i.en, ptr %i.bk, align 8
  store <2 x ptr> %i.eo, ptr %i.bl, align 8
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34, !inline_history !1133
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ep = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.r unwind label %bb.t       ; 3 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eq = load ptr, ptr %i.c, align 8
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.05981
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.ep, ptr %i.es, align 8
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.y

bb.t:                                             ; preds = %bb.p, %bb.q
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 24) #35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.u ], [ %i.et, %bb.t ]
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.d
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %.0.copyload1 = load i64, ptr %i.ew, align 1
  %i.ex = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 2 uses
  store i64 %.0.copyload1, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.c, align 8
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %.05981
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ex, ptr %i.fa, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %.0.copyload = load i32, ptr %i.fc, align 1
  %i.fd = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37 ; 2 uses
  store i32 %.0.copyload, ptr %i.fd, align 4
  %i.fe = load ptr, ptr %i.c, align 8
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.05981
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fd, ptr %i.fg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit, %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit, %bb.s, %bb.w, %bb.x, %bb.d
  %i.fh = add nuw nsw i64 %.05981, 1              ; 2 uses
  %i.fi = load i32, ptr %0, align 8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ult i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.d, label %._crit_edge85, !llvm.loop !1134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJmRA12_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_ERA28_S1_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(36) %6) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %2) #34
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA12_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EmEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(36) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %7, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %7, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #34
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #34
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA12_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EmEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(36) %5) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %1, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_KcERA12_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(36) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1
