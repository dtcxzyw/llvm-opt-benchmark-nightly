inline.NumInlined: 171
inline.NumDeleted: 99
begin_hunk_0_@_ZN8facebook5velox9aggregate9ValueList13prepareAppendEPNS0_19HashStringAllocatorE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8facebook5velox19HashStringAllocator15ensureAvailableEiRNS1_8PositionE(ptr noundef nonnull align 8 dereferenceable(37384) %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9aggregate9ValueList14writeLastNullsEPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::ByteOutputStream", align 8 ; 13 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %1, ptr %2, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  invoke void @_ZN8facebook5velox19HashStringAllocator11extendWriteENS1_8PositionERNS0_16ByteOutputStreamE(ptr noundef nonnull align 8 dereferenceable(37384) %1, ptr %.sroa.01.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @_ZN8facebook5velox19HashStringAllocator8newWriteERNS0_16ByteOutputStreamEi(ptr noundef nonnull align 8 dereferenceable(37384) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 44)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = add i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 8, ptr nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN8facebook5velox16ByteOutputStream9appendOneImEEvRKT_.exit unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.m
  %i.t = load i64, ptr %i.i, align 8
  store i64 %i.t, ptr %i.s, align 1
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !60
  %i.x = add i64 %i.w, 8
  store i64 %i.x, ptr %i.v, align 8, !tbaa !60
  br label %_ZN8facebook5velox16ByteOutputStream9appendOneImEEvRKT_.exit

_ZN8facebook5velox16ByteOutputStream9appendOneImEEvRKT_.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN8facebook5velox19HashStringAllocator11finishWriteERNS0_16ByteOutputStreamEi(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(37384) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 44)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN8facebook5velox16ByteOutputStream9appendOneImEEvRKT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #15
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.l:                                             ; preds = %_ZN8facebook5velox16ByteOutputStream9appendOneImEEvRKT_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.e, %bb.c ], [ %i.h, %bb.f ]
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i9, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #15
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit10

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit10:  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn
}

declare void @_ZN8facebook5velox19HashStringAllocator15ensureAvailableEiRNS1_8PositionE(ptr noundef nonnull align 8 dereferenceable(37384), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN8facebook5velox19HashStringAllocator11extendWriteENS1_8PositionERNS0_16ByteOutputStreamE(ptr noundef nonnull align 8 dereferenceable(37384), ptr, ptr, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare { ptr, ptr } @_ZN8facebook5velox19HashStringAllocator8newWriteERNS0_16ByteOutputStreamEi(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

declare void @_ZN8facebook5velox19HashStringAllocator11finishWriteERNS0_16ByteOutputStreamEi(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9aggregate9ValueList10appendNullEPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox9aggregate9ValueList13prepareAppendEPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = and i32 %i.b, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50
  %i.h = or i64 %i.e, %i.g
  store i64 %i.h, ptr %i.f, align 8, !tbaa !50
  %i.i = add i32 %i.b, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9aggregate9ValueList13appendNonNullERKNS0_10BaseVectorEiPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::ByteOutputStream", align 8 ; 13 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  tail call void @_ZN8facebook5velox9aggregate9ValueList13prepareAppendEPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %3, ptr %4, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  invoke void @_ZN8facebook5velox19HashStringAllocator11extendWriteENS1_8PositionERNS0_16ByteOutputStreamE(ptr noundef nonnull align 8 dereferenceable(37384) %3, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef i64 @_ZNK8facebook5velox16ByteOutputStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox4exec17ContainerRowSerde9serializeERKNS0_10BaseVectorEiRNS0_16ByteOutputStreamERKNS1_24ContainerRowSerdeOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(1) @_ZZN8facebook5velox9aggregate9ValueList13appendNonNullERKNS0_10BaseVectorEiPNS0_19HashStringAllocatorEE8kOptions)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !49
  %i.h = invoke noundef i64 @_ZNK8facebook5velox16ByteOutputStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = sub i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  %i.l = trunc i64 %i.i to i32
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  store i32 %i.m, ptr %i.j, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.n = sdiv i32 %i.m, 2
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.n, i32 24)
  %6 = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 1024)
  invoke void @_ZN8facebook5velox19HashStringAllocator11finishWriteERNS0_16ByteOutputStreamEi(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(37384) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %6)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #15
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit:    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.x, %bb.j ], [ %i.w, %bb.i ]
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i13, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #15
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit14

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit14:  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.pn
}

declare noundef i64 @_ZNK8facebook5velox16ByteOutputStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare void @_ZN8facebook5velox4exec17ContainerRowSerde9serializeERKNS0_10BaseVectorEiRNS0_16ByteOutputStreamERKNS1_24ContainerRowSerdeOptionsE(ptr noundef nonnull align 8 dereferenceable(94), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9aggregate9ValueList11appendValueERKNS0_13DecodedVectorEiPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !86, !range !43 ; 2 uses
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %.pre to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.g = load i8, ptr %i.f, align 1, !range !43
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = zext i32 %2 to i64                       ; 2 uses
  %i.j = lshr i64 %i.i, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !87
  %i.m = and i64 %i.i, 63
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.l, %i.n
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.q = load i8, ptr %i.p, align 1, !tbaa !88, !range !43, !noundef !44
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !87
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %i.aa
  %.not.i7.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i7.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !87
  %i.af = and i64 %i.ae, 1
  %.not.i6.i = icmp eq i64 %i.af, 0
  br i1 %.not.i6.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  tail call void @_ZN8facebook5velox9aggregate9ValueList13prepareAppendEPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %3)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49 ; 2 uses
  %i.ai = and i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50
  %i.an = or i64 %i.ak, %i.am
  store i64 %i.an, ptr %i.al, align 8, !tbaa !50
  %i.ao = add i32 %i.ah, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !49
  br label %bb.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.c
  %i.ap = trunc nuw i8 %.pre to i1
  br i1 %i.ap, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %bb.e, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !88, !range !43, !noundef !44
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !90
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !89
  %i.ax = sext i32 %2 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.g, %bb.h
  %.0.i8 = phi i32 [ %i.az, %bb.h ], [ %i.au, %bb.g ], [ %2, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  tail call void @_ZN8facebook5velox9aggregate9ValueList13appendNonNullERKNS0_10BaseVectorEiPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(94) %i.b, i32 noundef %.0.i8, ptr noundef %3)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9aggregate9ValueList11appendRangeERKSt10shared_ptrINS0_10BaseVectorEEiiPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi i32 [ %2, %.lr.ph ], [ %i.r, %bb.e ] ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(94) %i.e, i32 noundef %.011)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox9aggregate9ValueList13prepareAppendEPNS0_19HashStringAllocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %4)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = load i64, ptr %i.d, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox19HashStringAllocator11InputStream4skipEi:bb.a
  %.not.i1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i1, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox19HashStringAllocator11InputStream8skipImplElE18veloxCheckFailArgs, ptr noundef nonnull @.str.12) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ae = sub nsw i64 %.016.i, %i.ac              ; 3 uses
  %i.af = and i32 %i.aa, 536870911
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 4 uses
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.z, align 8, !tbaa !107
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !108 ; 3 uses
  %i.am = and i32 %i.al, 1073741824
  %.not.i.i.i2 = icmp eq i32 %i.am, 0
  %i.an = and i32 %i.al, 536870911                ; 2 uses
  %i.ao = add nsw i32 %i.an, -8
  %i.ap = select i1 %.not.i.i.i2, i32 %i.an, i32 %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !110
  store i64 0, ptr %i.a, align 8, !tbaa !111
  %.not.not.i = icmp sgt i64 %i.ae, %i.aq
  br i1 %.not.not.i, label %bb.d, label %_ZN8facebook5velox19HashStringAllocator11InputStream8skipImplEl.exit

_ZN8facebook5velox19HashStringAllocator11InputStream8skipImplEl.exit: ; preds = %bb.f, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit
  %.0.lcssa.i = phi i64 [ %i.w, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ %i.ae, %bb.f ]
  %.lcssa.i = phi i64 [ %.promoted14.i, %_ZN8facebook5velox19HashStringAllocator11InputStream16nextHeaderIfNeedEv.exit ], [ 0, %bb.f ]
  %i.ar = add nsw i64 %.lcssa.i, %.0.lcssa.i
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox19HashStringAllocator11InputStream8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  call void @_ZN8facebook5velox19HashStringAllocator6Header8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106
  invoke void @_ZN8facebook5velox19HashStringAllocator6Header8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNK8facebook5velox9ByteRange8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !121
  %i.f = load ptr, ptr %3, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  store ptr %i.f, ptr %2, align 16, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %4, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  store ptr %i.k, ptr %i.j, align 16, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %5, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  store ptr %i.p, ptr %i.o, align 16, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !14
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.15, i64 64, i64 3549, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !121
  %i.t = load ptr, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.y = load ptr, ptr %4, align 8, !tbaa !11     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ad = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.e:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.f:                                             ; preds = %.noexc7
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.f
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.aq = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !14
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.av = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN8facebook5velox19HashStringAllocator6Header8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZNK8facebook5velox9ByteRange8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #5

declare void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN8facebook5velox9aggregate9ValueListE", !18, i64 0, !19, i64 8, !18, i64 24, !19, i64 32, !4, i64 48, !4, i64 52, !13, i64 56}
!18 = !{!"p1 _ZTSN8facebook5velox19HashStringAllocator6HeaderE", !10, i64 0}
!19 = !{!"_ZTSN8facebook5velox19HashStringAllocator8PositionE", !18, i64 0, !9, i64 8}
!20 = !{!21, !42, i64 37256}
!21 = !{!"_ZTSN8facebook5velox19HashStringAllocator5StateE", !5, i64 0, !5, i64 36696, !13, i64 37080, !13, i64 37088, !13, i64 37096, !19, i64 37104, !18, i64 37120, !22, i64 37128, !34, i64 37224, !13, i64 37248, !42, i64 37256}
!22 = !{!"_ZTSN8facebook5velox6memory14AllocationPoolE", !23, i64 0, !24, i64 8, !29, i64 32, !9, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!23 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!24 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10AllocationESaIS3_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10AllocationESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN8facebook5velox6memory10AllocationE", !10, i64 0}
!29 = !{!"_ZTSSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !10, i64 0}
!34 = !{!"_ZTSN5folly10F14FastMapIPvmNS_23HeterogeneousAccessHashIS1_vEENS_26HeterogeneousAccessEqualToIS1_vEESaISt4pairIKS1_mEEEE", !35, i64 0}
!35 = !{!"_ZTSN5folly11F14ValueMapIPvmNS_23HeterogeneousAccessHashIS1_vEENS_26HeterogeneousAccessEqualToIS1_vEESaISt4pairIKS1_mEEEE", !36, i64 0}
!36 = !{!"_ZTSN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPvmvvvEEEE", !37, i64 0}
!37 = !{!"_ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPvmvvvEEEE", !38, i64 0, !39, i64 8}
!38 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkISt4pairIKPvmEEE", !10, i64 0}
!39 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKPvmEEEEELb1EEE", !40, i64 0, !41, i64 8}
!40 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !13, i64 0}
!41 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPSt4pairIKPvmEEE", !13, i64 0}
!42 = !{!"bool", !5, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!18, !18, i64 0}
!47 = !{!9, !9, i64 0}
!48 = !{!17, !18, i64 24}
!49 = !{!17, !4, i64 48}
!50 = !{!17, !13, i64 56}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN8facebook5velox16ByteOutputStreamE", !53, i64 0, !42, i64 8, !42, i64 9, !42, i64 10, !42, i64 11, !42, i64 12, !54, i64 16, !13, i64 40, !58, i64 48, !13, i64 56}
!53 = !{!"p1 _ZTSN8facebook5velox11StreamArenaE", !10, i64 0}
!54 = !{!"_ZTSSt6vectorIN8facebook5velox9ByteRangeESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSN8facebook5velox9ByteRangeE", !10, i64 0}
!59 = !{!52, !58, i64 48}
!60 = !{!61, !13, i64 16}
!61 = !{!"_ZTSN8facebook5velox9ByteRangeE", !9, i64 0, !13, i64 8, !13, i64 16}
!62 = !{!61, !13, i64 8}
!63 = !{!61, !9, i64 0}
!64 = !{i64 0, i64 8, !46, i64 8, i64 8, !47}
!65 = !{!57, !58, i64 0}
!66 = !{!57, !58, i64 16}
!67 = !{!17, !4, i64 52}
!68 = !{!69, !76, i64 48}
!69 = !{!"_ZTSN8facebook5velox13DecodedVectorE", !4, i64 0, !70, i64 8, !10, i64 16, !71, i64 24, !72, i64 32, !76, i64 48, !42, i64 56, !42, i64 57, !42, i64 58, !42, i64 59, !42, i64 60, !42, i64 61, !4, i64 64, !77, i64 72, !81, i64 96}
!70 = !{!"p1 int", !10, i64 0}
!71 = !{!"p1 long", !10, i64 0}
!72 = !{!"_ZTSSt8optionalIPKmE", !73, i64 0}
!73 = !{!"_ZTSSt14_Optional_baseIPKmLb1ELb1EE", !74, i64 0}
!74 = !{!"_ZTSSt17_Optional_payloadIPKmLb1ELb1ELb1EE", !75, i64 0}
!75 = !{!"_ZTSSt22_Optional_payload_baseIPKmE", !5, i64 0, !42, i64 8}
!76 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!77 = !{!"_ZTSSt6vectorIiSaIiEE", !78, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!81 = !{!"_ZTSSt6vectorImSaImEE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseImSaImEE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!85 = !{!69, !71, i64 24}
!86 = !{!69, !42, i64 58}
!87 = !{!13, !13, i64 0}
!88 = !{!69, !42, i64 59}
!89 = !{!69, !70, i64 8}
!90 = !{!69, !4, i64 64}
!91 = !{!92, !76, i64 0}
!92 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !93, i64 8}
!93 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0}
!94 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"vtable pointer", !6, i64 0}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!100, !4, i64 0}
!100 = !{!"_ZTSN8facebook5velox9aggregate15ValueListReaderE", !4, i64 0, !4, i64 4, !13, i64 8, !101, i64 16, !101, i64 72, !13, i64 128, !4, i64 136}
!101 = !{!"_ZTSN8facebook5velox19HashStringAllocator11InputStreamE", !102, i64 0, !18, i64 16, !18, i64 24, !61, i64 32}
!102 = !{!"_ZTSN8facebook5velox15ByteInputStreamE", !58, i64 8}
!103 = !{!100, !4, i64 4}
!104 = !{!100, !13, i64 8}
!105 = !{!101, !18, i64 16}
!106 = !{!101, !18, i64 24}
!107 = !{!101, !9, i64 32}
!108 = !{!109, !4, i64 0}
!109 = !{!"_ZTSN8facebook5velox19HashStringAllocator6HeaderE", !4, i64 0}
!110 = !{!101, !13, i64 40}
!111 = !{!101, !13, i64 48}
!112 = !{!102, !58, i64 8}
!113 = !{!100, !4, i64 136}
!114 = !{!100, !13, i64 128}
!115 = distinct !{null, null}
!116 = distinct !{!116, !98}
!117 = distinct !{!117, !98}
!118 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!123 = distinct !{!123, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
end_hunk_1
