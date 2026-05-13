inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph107, !llvm.loop !58

bb.ac:                                            ; preds = %.loopexit96, %.loopexit.split-lp, %bb.x, %bb.w, %bb.q, %bb.m
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.m ], [ %i.dg, %bb.x ], [ %i.cm, %bb.q ], [ %i.df, %bb.w ], [ %lpad.loopexit, %.loopexit96 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn73.pn.pn.pn

._crit_edge:                                      ; preds = %bb.ab, %_ZN13duckdb_snappy8internal13WorkingMemoryC2Em.exit
  %.057.lcssa = phi i64 [ %i.ay, %_ZN13duckdb_snappy8internal13WorkingMemoryC2Em.exit ], [ %i.dw, %bb.ab ]
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.057.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy20RawUncompressToIOVecEPKcmPK5iovecm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_snappy::ByteArraySource", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN13duckdb_snappy15ByteArraySourceE, i64 16), ptr %4, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !62
  %i.c = invoke noundef zeroext i1 @_ZN13duckdb_snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i1 %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_snappy::SnappyDecompressor", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.duckdb_snappy::SnappyIOVecWriter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  store ptr %i.b, ptr %4, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !66
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN13duckdb_snappy17SnappyIOVecWriterC2EPK5iovecm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69
  br label %_ZN13duckdb_snappy17SnappyIOVecWriterC2EPK5iovecm.exit

_ZN13duckdb_snappy17SnappyIOVecWriterC2EPK5iovecm.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sink.i, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.g, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 -1, ptr %i.k, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %0, ptr %3, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i8 0, ptr %i.n, align 4, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.o = invoke noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %3, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN13duckdb_snappy17SnappyIOVecWriterC2EPK5iovecm.exit
  br i1 %i.o, label %bb.f, label %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyIOVecWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i

bb.d:                                             ; preds = %bb.g, %bb.f, %_ZN13duckdb_snappy17SnappyIOVecWriterC2EPK5iovecm.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.q = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.r = load i32, ptr %i.m, align 8, !tbaa !52
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.s)
          to label %_ZN13duckdb_snappy18SnappyDecompressorD2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

_ZN13duckdb_snappy18SnappyDecompressorD2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.g unwind label %bb.d       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !73
  invoke void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %3, ptr noundef nonnull %4)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.g
  %i.ae = load i8, ptr %i.n, align 4, !tbaa !55, !range !74, !noundef !75
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyIOVecWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i

bb.h:                                             ; preds = %.noexc.i
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !72
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !73
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br label %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyIOVecWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i

_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyIOVecWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i: ; preds = %bb.h, %.noexc.i, %bb.c
  %.0.i = phi i1 [ false, %bb.c ], [ false, %.noexc.i ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.aj = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.ak = load i32, ptr %i.m, align 8, !tbaa !52
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %i.al)
          to label %_ZN13duckdb_snappyL18InternalUncompressINS_17SnappyIOVecWriterEEEbPNS_6SourceEPT_.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyIOVecWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

_ZN13duckdb_snappyL18InternalUncompressINS_17SnappyIOVecWriterEEEbPNS_6SourceEPT_.exit: ; preds = %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyIOVecWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i1 %.0.i
}

; Function Attrs: nounwind
declare void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy13RawUncompressEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_snappy::ByteArraySource", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN13duckdb_snappy15ByteArraySourceE, i64 16), ptr %3, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !62
  %i.c = invoke noundef zeroext i1 @_ZN13duckdb_snappy13RawUncompressEPNS_6SourceEPc(ptr noundef nonnull %3, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy13RawUncompressEPNS_6SourceEPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_snappy::SnappyDecompressor", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.duckdb_snappy::SnappyArrayWriter", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %0, ptr %2, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i8 0, ptr %i.g, align 4, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.h = invoke noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyArrayWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.j = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.k = load i32, ptr %i.f, align 8, !tbaa !52
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.l)
          to label %_ZN13duckdb_snappy18SnappyDecompressorD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZN13duckdb_snappy18SnappyDecompressorD2Ev.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.f unwind label %bb.c       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %4 = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %i.w ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !79
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 63)
  %i.y = sub nsw i64 0, %.sroa.speculated.i.i.i
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  store ptr %i.z, ptr %i.d, align 8, !tbaa !80
  invoke void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %3)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.f
  %i.aa = load i8, ptr %i.g, align 4, !tbaa !55, !range !74, !noundef !75
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyArrayWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i

bb.g:                                             ; preds = %.noexc.i
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br label %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyArrayWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i

_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyArrayWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i: ; preds = %bb.g, %.noexc.i, %bb.b
  %.0.i = phi i1 [ false, %bb.b ], [ false, %.noexc.i ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.af = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !52
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ah)
          to label %_ZN13duckdb_snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyArrayWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #28
  unreachable

_ZN13duckdb_snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit: ; preds = %_ZN13duckdb_snappyL25InternalUncompressAllTagsINS_17SnappyArrayWriterEEEbPNS_18SnappyDecompressorEPT_jj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy10UncompressEPKcmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_snappy::ByteArraySource", align 8 ; 9 uses
  %.not.i.not.i = icmp eq i64 %1, 0
  br i1 %.not.i.not.i, label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !7       ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not42.i.not.i = icmp eq i64 %1, 1
  br i1 %.not42.i.not.i, label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = and i32 %i.i, 16256
  %i.k = or disjoint i32 %i.j, %i.d               ; 2 uses
  %i.l = icmp sgt i8 %i.g, -1
  br i1 %i.l, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i.i = icmp samesign ugt i64 %1, 2
  br i1 %.not43.i.i, label %bb.f, label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 14
  %i.q = and i32 %i.p, 2080768
  %i.r = or disjoint i32 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not44.i.not.i = icmp eq i64 %1, 3
  br i1 %.not44.i.not.i, label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !7     ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 21
  %i.x = and i32 %i.w, 266338304
  %i.y = or disjoint i32 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45.i.i = icmp samesign ugt i64 %1, 4
  br i1 %.not45.i.i, label %bb.j, label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !7    ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = icmp ult i8 %i.aa, 16
  br i1 %i.ae, label %bb.k, label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.k:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j
  %.0.i = phi i32 [ %i.y, %bb.h ], [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.j ]
  %i.af = zext i32 %.0.i to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.af, i8 noundef signext 0)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !81
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN13duckdb_snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %2, align 8, !tbaa !84
  br label %_ZN13duckdb_snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN13duckdb_snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.k, %bb.l
  %i.ak = phi ptr [ %i.aj, %bb.l ], [ null, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN13duckdb_snappy15ByteArraySourceE, i64 16), ptr %3, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.al, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.am, align 8, !tbaa !62
  %i.an = invoke noundef zeroext i1 @_ZN13duckdb_snappy13RawUncompressEPNS_6SourceEPc(ptr noundef nonnull %3, ptr noundef %i.ak)
          to label %_ZN13duckdb_snappy13RawUncompressEPKcmPc.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZN13duckdb_snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.ao

_ZN13duckdb_snappy13RawUncompressEPKcmPc.exit:    ; preds = %_ZN13duckdb_snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread

_ZN13duckdb_snappy21GetUncompressedLengthEPKcmPm.exit.thread: ; preds = %bb.g, %bb.e, %bb.c, %bb.a, %bb.j, %bb.i, %_ZN13duckdb_snappy13RawUncompressEPKcmPc.exit
  %.0 = phi i1 [ %i.an, %_ZN13duckdb_snappy13RawUncompressEPKcmPc.exit ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13duckdb_snappy23IsValidCompressedBufferEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_snappy::ByteArraySource", align 8 ; 9 uses
  %3 = alloca %"class.duckdb_snappy::SnappyDecompressionValidator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN13duckdb_snappy15ByteArraySourceE, i64 16), ptr %2, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.c = invoke fastcc noundef zeroext i1 @_ZN13duckdb_snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_(ptr noundef nonnull %2, ptr noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN13duckdb_snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN13duckdb_snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_snappy::SnappyDecompressor", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %0, ptr %2, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i8 0, ptr %i.d, align 4, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_:bb.a
  br label %.loopexit.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1
  %i.dz = zext i32 %.0.copyload.i133 to i64
  %i.ea = lshr i32 %i.bb, 2
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dz, i64 noundef %i.ec, ptr noundef nonnull %i.a)
  br i1 %i.ed, label %bb.aa, label %.thread179.loopexit

bb.u:                                             ; preds = %bb.i
  %i.ee = zext nneg i32 %i.bb to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !20 ; 2 uses
  %i.eh = sext i16 %i.eg to i64
  %.0.copyload.i134 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.ei = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.ej = shl nsw i32 -1, %i.ei
  %i.ek = xor i32 %i.ej, -1
  %i.el = and i32 %.0.copyload.i134, %i.ek
  %i.em = and i16 %i.eg, 255
  %i.en = zext nneg i16 %i.em to i64              ; 5 uses
  %i.eo = sub nsw i64 %i.en, %i.eh
  %.tr = trunc nsw i64 %i.eo to i32
  %.narrow = add nsw i32 %i.el, %.tr              ; 2 uses
  %i.ep = zext i32 %.narrow to i64                ; 5 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !133 ; 9 uses
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !120
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.ep               ; 2 uses
  %i.ew = load ptr, ptr %i.y, align 8
  %.not.i135 = icmp uge ptr %i.eq, %i.ew
  %or.cond.not.i = select i1 %i.ev, i1 true, i1 %.not.i135, !prof !165
  %i.ex = icmp samesign ult i64 %i.ep, %i.en
  %i.ey = or i1 %i.ex, %or.cond.not.i
  br i1 %i.ey, label %bb.v, label %bb.y, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.ez = icmp eq i32 %.narrow, 0
  br i1 %i.ez, label %.thread179.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en ; 3 uses
  %i.fb = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  %i.fd = select i1 %i.ev, i1 true, i1 %i.fc, !prof !22
  br i1 %i.fd, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.x, !prof !22

bb.x:                                             ; preds = %bb.w
  %i.fe = sub nsw i64 0, %i.ep
  %i.ff = getelementptr inbounds i8, ptr %i.eq, i64 %i.fe
  %i.fg = call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ff, ptr noundef %i.eq, ptr noundef %i.fa, ptr noundef %i.fb) ; 0 uses
  br label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169

bb.y:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  %i.fi = sub nsw i64 0, %i.ep
  %i.fj = getelementptr inbounds i8, ptr %i.eq, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eq, ptr noundef nonnull align 1 dereferenceable(64) %i.fj, i64 64, i1 false)
  br label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169: ; preds = %bb.y, %bb.x
  %.sink.i.ph = phi ptr [ %i.fa, %bb.x ], [ %i.fh, %bb.y ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !133
  br label %bb.z

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.w
  store ptr %i.eq, ptr %i.m, align 8, !tbaa !121
  %i.fk = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ep, i64 noundef %i.en)
  %i.fl = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !133
  br i1 %i.fk, label %bb.z, label %.thread179.loopexit

bb.z:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169
  %i.fm = zext nneg i32 %i.bc to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fm ; 3 uses
  %i.fo = lshr i32 %.0.copyload.i134, %i.ei
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not183 = icmp ult ptr %i.fn, %i.fp
  br i1 %.not183, label %.loopexit.backedge, label %.thread, !prof !138

bb.aa:                                            ; preds = %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre198 = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.fr = icmp ult ptr %i.fq, %.pre198
  br i1 %i.fr, label %bb.ac, label %.thread, !prof !139

.thread:                                          ; preds = %bb.z, %bb.aa
  %.12229 = phi ptr [ %i.fq, %bb.aa ], [ %i.fn, %bb.z ]
  store ptr %.12229, ptr %i.c, align 8, !tbaa !46
  %i.fs = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fs, label %bb.ab, label %.thread179.loopexit, !prof !19

bb.ab:                                            ; preds = %.thread
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.sroa.speculated.i137 = call i64 @llvm.smin.i64(i64 %i.fx, i64 4)
  %i.fy = sub i64 0, %.sroa.speculated.i137
  %i.fz = getelementptr inbounds i8, ptr %i.fu, i64 %i.fy
  store ptr %i.fz, ptr %i.l, align 8, !tbaa !132
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.13 = phi ptr [ %i.ft, %bb.ab ], [ %i.fq, %bb.aa ] ; 2 uses
  %i.ga = load i8, ptr %.13, align 1, !tbaa !7
  %i.gb = zext i8 %i.ga to i32
  br label %.loopexit.backedge

.thread179.loopexit:                              ; preds = %bb.q, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, %bb.t, %bb.f, %.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %bb.v, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread164
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !133
  br label %.thread179

.thread179:                                       ; preds = %.thread179.loopexit, %bb.b
  %i.gc = phi ptr [ %.pre199, %.thread179.loopexit ], [ %i.n, %bb.b ]
  store ptr %i.gc, ptr %i.m, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !133    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not, !prof !165
  %i.j = icmp ult i64 %1, %2
  %i.k = or i1 %i.j, %or.cond.not
  br i1 %i.k, label %bb.b, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %i.q = select i1 %i.g, i1 true, i1 %i.p, !prof !22
  br i1 %i.q, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8, !tbaa !121
  %i.s = tail call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !121
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.u = sub i64 0, %1
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u
  %i.w = tail call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.v, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.y = sub i64 0, %1
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.z, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.m, %bb.e ], [ %i.t, %bb.d ]
  %.0.ph = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ %i.s, %bb.d ]
  store ptr %.sink, ptr %3, align 8, !tbaa !133
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %.sroa.speculated20, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.01434 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.01533 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.01533, i64 %.035, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.035 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !121
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !122
  %i.w = add i64 %i.u, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !122
  %i.x = sub nuw i64 %.01434, %.035               ; 4 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = load i64, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.01533, i64 %.035 ; 2 uses
  %i.ac = sub i64 %i.z, %i.w                      ; 2 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 65536) ; 4 uses
  %i.ad = trunc nuw nsw i64 %.sroa.speculated20 to i32
  %i.ae = tail call noundef ptr @_ZN13duckdb_snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad) ; 4 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !120
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated20 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !170
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 63)
  %i.ag = sub nsw i64 0, %.sroa.speculated
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !169
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !173 ; 4 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !173
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !128 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %3 = load ptr, ptr %i.h, align 8, !tbaa !133
  store ptr %3, ptr %i.ax, align 8, !tbaa !133
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #26
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !128
  store ptr %i.az, ptr %i.m, align 8, !tbaa !173
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !174
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %.not38 = icmp ugt i64 %i.x, %.sroa.speculated20
  br i1 %.not38, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !175

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bb = phi ptr [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.015.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ %2, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.015.lcssa, i64 %.014.lcssa, i1 false)
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.014.lcssa
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %i.be = phi i1 [ true, %._crit_edge ], [ false, %bb.b ]
  ret i1 %i.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN13duckdb_snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = icmp slt i32 %1, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #25 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.g, align 8, !tbaa !133
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.f, align 8, !tbaa !124
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !123  ; 5 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.d, ptr %i.w, align 8, !tbaa !133
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx3, align 8, !tbaa !8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !177, !alias.scope !178
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !182

_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #26
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !123
  store ptr %i.z, ptr %i.f, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !176
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret ptr %i.d
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = add i64 %i.c, %i.h
  %i.k = sub i64 %i.j, %i.i                       ; 3 uses
  %i.l = add i64 %1, -1
  %.not = icmp ult i64 %i.l, %i.k
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !111
  %i.o = sub i64 %i.n, %i.k
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1832 = icmp eq i64 %2, 0
  br i1 %.not1832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = sub i64 %i.k, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.e ]
  %.034 = phi i64 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 3 uses
  %.02133 = phi ptr [ %i.e, %.lr.ph ], [ %storemerge.i25, %bb.e ] ; 4 uses
  %i.t = add i64 %.in, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.u = lshr i64 %.034, 16
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.y = and i64 %.034, 65535
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7    ; 2 uses
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !7
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !170
  %.not.i = icmp eq ptr %i.ab, %.02133
  br i1 %.not.i, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %bb.d
  store i8 %i.aa, ptr %.02133, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.02133, i64 1
  br label %bb.e

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %bb.d
  store ptr %.02133, ptr %i.d, align 8, !tbaa !121
  %i.ad = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !121
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
end_hunk_1
